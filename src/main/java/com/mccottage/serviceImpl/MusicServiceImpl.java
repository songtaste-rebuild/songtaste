package com.mccottage.serviceImpl;

import java.util.List;

import org.springframework.stereotype.Service;

import com.mccottage.base.BaseService;
import com.mccottage.entity.Music;
import com.mccottage.entity.MusicAlbumRelation;
import com.mccottage.entity.MusicAlbumRelationExample;
import com.mccottage.entity.MusicAlbumRelationExample.Criteria;
import com.mccottage.entity.MusicExample;
import com.mccottage.service.MusicService;
import com.mccottage.utils.Result;
import com.mccottage.utils.SongtasteUtils;

@Service
public class MusicServiceImpl extends BaseService implements MusicService {

	public Result<Object> downloadMusicByOneUrl(String url) {
		Result<Object> result = new Result<Object>();
		log.debug("download music by one url : " + url);
		try {
			SongtasteUtils.downloadFromSongtastePageUrl(url);
			result.setSuccess(true);
		} catch (Exception ex) {
			result.setSuccess(false).setErrorMsg(ex.getMessage());
			log.error("download false");
		}
		return result;
	}

	public Result<Object> downloadMusicByOnePage(String url) {
		Result<Object> result = new Result<Object>();
		log.debug("downloadMusicByOnePage, url : " + url);
		try {
			SongtasteUtils.downloadByPage(url);
			result.setSuccess(true);
		} catch (Exception ex) {
			result.setSuccess(false).setErrorMsg(ex.getMessage());
			log.error("download false");
		}
		return result;
	}

	public Result<List<Music>> searchMusicBySelective(MusicExample musicExample) {
		Result<List<Music>> result = new Result<List<Music>>();
		try {
			List<Music> musicList = musicMapper.selectByExample(musicExample);
			if (musicList != null && musicList.size() > 0) {
				result.setContext(musicList);
			}
		} catch (Exception ex) {
			log.error("search Music by selective error, message : "
					+ ex.getMessage());
			return Result.getError("search error");
		}
		return result.setSuccess(true);
	}

	public Result<Object> addMusicIntoAlbum(Long[] musicList, Long albumId) {
		Result<Object> result = new Result<Object>();
		log.debug("addMusicIntoAblum : musicIdList : ");
		result.setSuccess(false);
		try {
			if (musicList.length == 0) {
				result.setErrorMsg("no music");
			} else {
				for (Long id : musicList) {
					MusicAlbumRelation musicAlbumRelation = new MusicAlbumRelation();
					musicAlbumRelation.setAlbum(albumId);
					musicAlbumRelation.setMusicId(id);
				}
				result.setSuccess(true);
			}
		} catch (Exception ex) {
			log.error("addMusicIntoAlbum error : errorMsg : " + ex.getMessage());
		}
		return result;
	}

	public Result<Object> removeMusicFromAlbum(Long[] musicIdList, Long ablumId) {
		Result<Object> result = new Result<Object>();
		result.setSuccess(false);
		log.debug("removeMusicFromAlbum params : musicIdList :" + musicIdList
				+ " , albumId : " + ablumId);
		try {
			MusicAlbumRelationExample musicAlbumRelationExample = new MusicAlbumRelationExample();
			Criteria criteria = musicAlbumRelationExample.createCriteria();
			criteria.andAlbumEqualTo(ablumId);
			for (Long id : musicIdList) {
				criteria.andMusicIdEqualTo(id);
				musicAlbumRelationMapper
						.deleteByExample(musicAlbumRelationExample);
			}
			result.setSuccess(true);
		} catch (Exception ex) {
			log.error("error msg : " + ex.getMessage());
		}
		return result;
	}

	public Result<Music> addMusic(Music music) {
		log.debug("add music : " + music);
		Result<Music> result = new Result<Music>();
		result.setSuccess(false);
		try {
			result.setSuccess(true);
			musicMapper.insert(music);
			result.setSuccess(true);
		} catch (Exception ex) {
			log.error("error msg:" + ex.getMessage());
		}
		return result;
	}

	@SuppressWarnings({ "unchecked", "rawtypes" })
	public Result<Object> deleteMusic(Long musicId) {
		log.debug("deleteMusic " + musicId);
		Result result = new Result();
		result.setSuccess(false);
		try {
			musicMapper.deleteByPrimaryKey(musicId);
			result.setSuccess(true);
		} catch (Exception ex) {
			log.error(ex.getMessage());
		}
		return result;
	}


	public Result<Music> selectMusicById(Long musicId) {
		Result<Music> result = new Result<Music>();
		result.setSuccess(false);
		try {
			result.setContext(musicMapper.selectByPrimaryKey(musicId));
			result.setSuccess(true);
		} catch (Exception ex) {
			log.error("error message  " + ex.getMessage());
		}
		return result;
	}
}
